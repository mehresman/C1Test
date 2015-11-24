function textCounter(field, countfield, maxlimit) { 
    if (field.value.length > maxlimit) 
        field.value = field.value.substring(0, maxlimit); 
    countfield.value = field.value.length + " / " + maxlimit + " characters"; 
} 
