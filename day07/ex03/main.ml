let () =
  let member1 = new People.people "member 1" in
  let member2 = new People.people "member 2" in
  let member3 = new People.people "member 3" in
  let army = new Army.army [member1] in
  army#len;
  army#add member2;
  army#len;
  army#add member3;
  army#len;
  army#delete;
  army#len;
  army#delete;
  army#len;
  army#delete;
  army#len