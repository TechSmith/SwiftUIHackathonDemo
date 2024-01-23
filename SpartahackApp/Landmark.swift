//
//  Landmark.swift
//  SpartahackApp
//
//  Created by Carson Greene on 1/23/24.
//

import Foundation

enum LandmarkCategory {
   case food
   case historic
   case athletic
   case academic
   case entertainment
}

struct Landmark: Identifiable {
   var id: String
   var name: String
   var description: String
   var categories: [LandmarkCategory]?
   
   public static var landmarks: [Landmark] {
      [
      Landmark(id: "sparty",
               name: "Spartan Statue",
               description: "When John Hannah became president of Michigan State College in 1941, he commissioned assistant professor of art Leonard D. Jungwirth to design a statue of an athletic Spartan warrior. Jungwirth sculpted a statue known simply as The Spartan, which soon gained the nickname of \"Sparty\". Though Jungwirth originally designed The Spartan as a bronze statue, it had to be cast in terra cotta due to World War II rationing of bronze. The terra cotta statue stood on the banks of the Red Cedar River, until 2005, when the university replaced it with a bronze replica. The original Spartan was moved into the stadium, where it remains on display to this day.",
               categories: [.historic]),
      Landmark(id: "union",
               name: "MSU Union",
               description: "MSU Union is a central gathering place for students of Michigan State University. Construction was started in 1923 and was completed in 1925. It includes a food court, convenience store, apparel shop, computer lab, arcade, MSUFCU, conference rooms, study lounges and classrooms.",
               categories: [.food, .historic, .entertainment]),
      Landmark(id: "stadium",
               name: "Spartan Stadium",
               description: "Spartan Stadium (formerly College Field, Macklin Field, and Macklin Stadium) opened in 1923 in East Lansing, Michigan, United States. It is primarily used for football, and is the home field of the Michigan State University Spartans. After the addition of luxury boxes and club seating in 2004–2005, the capacity of the stadium grew from 72,027 to 75,005—though it has held more than 80,000 fans—making it the Big Ten's sixth largest stadium. It has been nicknamed \"The Woodshed\"",
               categories: [.athletic, .entertainment]),
      Landmark(id: "stem",
               name: "STEM Teaching and Learning Facility",
               description: "Designed with students in mind, the 21st-century classroom and laboratory spaces are specifically geared toward gateway courses in biological sciences, chemistry, computer science, engineering and physics. When fully scheduled for a semester, there will be nearly 7,000 students in class in the building each week. In addition, approximately 1,200 seats in common areas and gathering spaces are available to facilitate student collaboration. These spaces are open for studying or can be reserved for group projects and faculty office hours. Every area is completely accessible.",
               categories: [.academic]),
      Landmark(id: "engineering",
               name: "Engineering Building",
               description: """
               The Engineering Building is the home of Spartan Engineers, who explore and learn the main fields of engineering in diversified classes and labs. There are a variety of tutoring and mentoring opportunities to assist students in targeted courses.
               
               The College of Engineering has a well-organized pathway to introduce you to MSU, guide and nurture your academic journey and then give you the career advice and networks you’ll need to land competitive internships and jobs.
               
               Incoming first-year students who are interested in an engineering major should check out the CoRe experience, a supportive program that helps ensure the success of engineering majors. Housed in South Neighborhood, CoRe brings real-world expertise and challenges into the classroom and residential environment, showing how important engineering is for solving global challenges.
               """,
               categories: [.academic]),
      Landmark(id: "beaumont",
               name: "Beaumont Tower",
               description: """
               During its dedication ceremony, the president of the college described the Beaumont Tower as "a meeting or trysting place of the students, student groups or organizations, the center of all the activities of this institution". The tower was also to serve as a time piece for the university, directing students' daily activities by sounding hourly.
               
               The tower, designed in the Collegiate Gothic architectural style, features The Sower, an Art Deco bas-relief by sculptor Lee Lawrie (1922), with the inscription "Whatsoever a Man Soweth" (from Galatians 6:7). This serves as a tribute both to MSU's origins as an agricultural college and to the seminal nature of knowledge.
               
               Beaumont also houses a full carillon, with 49 bells. Originally the tower had only ten bells but over time additional bells were added until a full range of music could be played from these. The bells now play frequently throughout the day activated by a computer. The Campus Circle where the tower is located often serves as a gathering place for students where free concerts on the lawn are available in the summer. The Beaumont Tower is one of the most recognizable and most photographed landmarks on the MSU campus. Its likeness as a line drawing is used on MSU letterhead. Special performances using the carillon are provided for specific occasions.
               
               The northeast finial is higher than the other three. The missing finials represent the need for higher education.
               
               The tower is also the meeting place for the executive board of the Michigan State University Tower Guard. The Tower Guard, founded in 1934 by May Shaw, the wife of former MSU president Robert Shaw, is MSU’s oldest and one of the most respected student organizations on campus. It was originally a female honor society that was a service-oriented organization which would help to serve the needs of visually impaired students at Michigan State University. In 1977, membership was opened to the outstanding young men on campus in addition to women. Each year, the top sophomores are chosen to carry on the tradition based on their academic excellence, leadership, outstanding character, and commitment to service.
               """,
               categories: [.historic]),
      Landmark(id: "auditorium",
               name: "MSU Auditorium",
               description: "Located on the campus of Michigan State University in East Lansing, the MSU Auditorium is home to the MSU College of Arts & Letters, MSU Dept. of Music, MSU's Dept. of Performing Arts Facilities & Programs, MSU classroom space and the MSU Dept. of Theatre's Arena Auditorium. Theatre is best when it incites and excites!",
               categories: [.historic, .entertainment]),
      Landmark(id: "wharton", 
               name: "Wharton Center for Performing Arts",
               description: "Wharton Center for Performing Arts is Michigan's largest performing arts venue, and is the number one performing arts venue owned by a University. Wharton Center hosts over 100 performances per year, including touring Broadway musicals, prominent performing artists, on-campus music ensembles, leading classical orchestras and unmatched dance companies.",
               categories: [.entertainment]),
      Landmark(id: "broad", 
               name: "Eli and Edythe Broad Art Museum",
               description: """
               The Eli and Edythe Broad Art Museum is a nonprofit, contemporary art museum designed by Zaha Hadid located on the campus of Michigan State University in East Lansing, Michigan, United States. It opened on November 10, 2012.

               The rotating exhibition schedule allows for frequent new shows to be on view. The museum's curatorial focus is a global focus on emerging to mid-career artists. Exhibitions consist largely of contemporary artists, including those achieving their Master of Fine Arts degree at Michigan State University, as well as shows of selected works from the collection. The MSU Broad organizes a few hundred programs for various ages, open to all at no charge. Admission to the galleries and all community events and programs is free for all visitors.

               The leading gift to the MSU Broad's collection was provided by Eli and Edythe Broad upon its establishment. The museum, although contemporary, has a large collection of historical works that were inherited from the Kresge Art Museum, MSU's former art museum, when it closed. This collection includes over 10,000 works and growing and represents a wide array of artistic production from the ancient to the present, across the world, in a variety of media. Significant holdings include Ancient Greek and Roman antiquities; pre-Colombian sculptures and vessels; Medieval and Renaissance illuminations; Old Master paintings; 19th-century American paintings; 20th-century sculpture by artists such as Alexander Calder and Jenny Holzer; and works by contemporary artists such as Chuck Close and Ann Hamilton. Their focus in collection growth and new acquisitions is on modern and contemporary works (post-1945).

               The MSU Broad Art Museum was a location for filming portions of the movie Batman v. Superman: Dawn of Justice in October 2016.
               """,
               categories: [.entertainment])
      ]
   }
}

