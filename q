# A question generator to keep track of my current questions

TIME=$(date +%D_%H:%M)

touch ~/Desktop/.QUESTIONS.txt

echo "Enter your question: "
read QUEST 
if [ "$QUEST" = "" ] || \
   [ "$QUEST" = "exit" ]
then
  echo "Question abandoned"
else
  if [ "$QUEST" = "?" ]
  then
    printf "Here are your current questions: \n"
    cat ~/Desktop/.QUESTIONS.txt
  else 
    echo "# ${TIME}: \n- ${QUEST}" >> ~/Desktop/.QUESTIONS.txt
    echo "" >> ~/Desktop/.QUESTIONS.txt
    echo "Question has been added."
  fi
fi 
