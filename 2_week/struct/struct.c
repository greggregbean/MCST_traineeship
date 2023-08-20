struct student {
    char* name;
    int   age;
    float average_score;
};

void get_student (struct student* student) { }

int main () {
    struct student ivan;
    ivan.name = "Ivan";
    ivan.age = 19;
    ivan.average_score = 8.43; 

    get_student(&ivan);
}