#include <stdbool.h>
#include <stdio.h>
#include <limits.h>
#include <assert.h>
#include <stdlib.h>
#include "research.h"
#include "infection.h"
#include "country.h"
#include "commons.h"
#include "error.h"


// Creates a research element out of a country and a stats
tError research_init(tResearch* object, tCountry* country) {
    // PR3_EX1   
	assert(object != NULL);
	assert(country != NULL);
	
	object->country = country;
	object->stats.Infectivity = country_totalCases(country);
	object->stats.Lethality = country_totalCriticalCases(country);
	object->stats.Severity = country_totalDeaths(country);
    return OK;
}

// Releases data pointed by research element
void research_free(tResearch* object) {
    // PR3_EX1   
	assert(object != NULL);
	
	if (object->country != NULL){
		object->country = NULL;
	}
	
	object->stats.Infectivity = 0;
	object->stats.Lethality = 0;
	object->stats.Severity = 0;
}

// Compare stats of two countries, 1 if s1 wins, -1 if s2 wins, 0 if tie
int research_compare(tInfectionStats s1, tInfectionStats s2) {
    // PR3_EX1
	if (s1.Infectivity > s2.Infectivity){
		return 1;
	} else if (s1.Infectivity < s2.Infectivity) {
		return -1;
	} else {
		if (s1.Severity > s2.Severity){
			return 1;
		} else if (s1.Severity < s2.Severity){
			return -1;
		} else {
			if (s1.Lethality > s2.Lethality){
				return 1;
			} else if (s1.Lethality < s2.Lethality){
				return -1;
			} else {
				return 0;
			}
		}
	}
}

// Create the research list
void researchList_create(tResearchList* list) {
    // PR3_EX2
	assert(list != 0);
	
	list->first = NULL;
	list->last = NULL;
	list->size = 0;
}

// Insert/adds a new research to the research list
tError researchList_insert(tResearchList* list, tResearch* research, int index) {
    // PR3_EX2
	assert(list != 0);
	assert(research != 0);
	
	tResearchListNode* aux = NULL;
	int i;
	
	if (index > list->size+1 || index < 0) {
		return ERR_INVALID_INDEX;
	} else if (index == list->size+1 && index != 1){
		aux = list->first;
		while (aux->next != NULL) {
			aux = aux->next;
		}
		aux->next = (tResearchListNode*) malloc (sizeof(tResearchListNode));
		aux->next->e = research;
		aux->next->next = NULL;
		aux->next->prev = aux;
		list->last = aux->next;
		list->size ++;
	} else if (index == 1) {
		aux = list->first;
		list->first = (tResearchListNode*) malloc (sizeof(tResearchListNode));
		list->first->e = research;
		list->first->next = aux;
		list->first->prev = NULL;
		if (list->size == 0) {
			list->last = list->first;
		} else {
			aux->prev = list->first;
		}
		list->size ++;
	} else {
		aux = list->first;
		i = 1;
		while (i < index) {
			aux = aux->next;
			i ++;
		}
		aux->prev->next = (tResearchListNode*) malloc (sizeof(tResearchListNode));
		aux->prev->next->e = research;
		aux->prev->next->next = aux;
		aux->prev->next->prev = aux->prev;
		aux->prev = aux->prev->next;
		list->size ++;
	}
    return OK;
}

// Deletes a research from the research list
tError researchList_delete(tResearchList* list, int index) {
    // PR3_EX2
	assert(list != NULL);
	tResearchListNode * aux = NULL;
	int i = 1;
	
	if (list->size == 0) {
		return ERR_EMPTY_LIST;
	} else if (index < 0 || index > list->size){
		return ERR_INVALID_INDEX;
	} else if (index == 1){
		if (list->size == 1){
			aux = list->first;
			list->first = NULL;
			list->last = NULL;
			aux->e = NULL;
			free(aux);
		} else {
			aux = list->first;
			list->first = list->first->next;
			list->first->prev = NULL;
			aux->e = NULL;
			aux->next = NULL;
			free(aux);
		}
		list->size --;
	} else if (index == list->size) {
		aux = list->last;
		aux->prev->next = NULL;
		aux->prev = NULL;
		aux->e = NULL;
		free(aux);
		list->size --;
	}else {
		aux = list->first;
		while (i< index) {
			aux = aux->next;
			i ++;
		}
		aux->prev->next = aux->next;
		aux->next->prev = aux->prev;
		aux->next = NULL;
		aux->prev = NULL;
		aux->e = NULL;
		free(aux);
		list->size --;
	}
    return OK;
}

// Gets research from given position, NULL if out of bounds
tResearchListNode* researchList_get(tResearchList* list, int index) {
    // PR3_EX2
	assert(list != NULL);
	tResearchListNode* aux = NULL;
	if (index > list->size || index < 0){
		return NULL;
	}
	
	int i = 1;
	aux = list->first;
	while (i<index){
		aux = aux->next;
		i ++;
	}
    return aux;
}

// Gets true if list is empty
bool researchList_empty(tResearchList* list) {
    // PR3_EX2
    return (list->size == 0);
}

// Remove all data for a research list
void researchList_free(tResearchList* list) {
    // PR3_EX2
	while(!researchList_empty(list)){
		researchList_delete(list,1);
	}
}

// given a list of country' research, returns the position of the country in the list
int researchList_getPosByCountryRecursive(tResearchListNode* first, tCountry *country, int pos) {
    // PR3_EX3
	if(first->e->country == country){
		return pos;
	} else {
		if (first->next == NULL){
			return -1;
		} else {
			return researchList_getPosByCountryRecursive(first->next, country, pos+1);
		}
	}
}

// given a list of country' research, returns the position of the country in the list
int researchList_getPosByCountry(tResearchList* list, tCountry *country) {
    // PR3_EX3
	assert(list != NULL);
	assert(country != NULL);
	
	if(researchList_empty(list)){
		return -1;
	}
	return researchList_getPosByCountryRecursive(list->first, country, 1);
}

// Swap two elements in the list
tError researchList_swap(tResearchList* list, int index_dst, int index_src) {
    // PR3_EX3  
	assert(list != NULL);
	tResearchListNode* aux = NULL;
	
	if(index_dst > list->size || index_src > list->size || index_dst < 0 || index_src < 0){
		return ERR_INVALID_INDEX;
	}
	aux = researchList_get(list,index_dst);
	researchList_get(list,index_dst)->e = researchList_get(list,index_src)->e;
	researchList_get(list,index_src)->e = aux->e;
    return OK;
}

// Sorts input list using bubbleSort algorithm
tError researchList_bubbleSort(tResearchList *list) {
    // PR3_EX3
	int i, j;

    for (i = 0; i < list->size-2; i++) {
        for (j = 1; j < list->size-i; j++) {
            if (research_compare(researchList_get(list,j)->e->stats,researchList_get(list,j+1)->e->stats) == -1) {
                researchList_swap(list,j, j+1);
            }
        }
    }
    return OK;
}

// Helper function, print list contents
void researchList_print(tResearchList list) {
    tResearchListNode *pLNode;

    printf("===== List Contents:\n\n");

    for (int i = 0; i < list.size; i++) {
        pLNode = researchList_get(&list, i + 1);
        printf("\tElemPos: %d:\tInfectivity: %d;\tSeverity: %d;\tLethality: %d;\tCountry_Name: \"%s\"\n",
            i + 1,
            pLNode->e->stats.Infectivity,
            pLNode->e->stats.Severity,
            pLNode->e->stats.Lethality,
            pLNode->e->country->name
            );

    }

    printf("\n===== End Of List: %d elems\n", list.size);
}
