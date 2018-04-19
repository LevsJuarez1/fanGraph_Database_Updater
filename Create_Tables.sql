create table L_as_L (
     name             varchar(30)     not null,
     team             varchar(30),
     G                varchar(30),
     AB               varchar(30),
     PA               varchar(30),
     H                varchar(30),
     One_B            varchar(30),
     Two_B            varchar(30),
     Three_B          varchar(30),
     HR               varchar(30),
     R                varchar(30),
     RBI              varchar(30),
     BB               varchar(30),
     IBB              varchar(30),
     SO               varchar(30),
     HBP              varchar(30),
     SF               varchar(30),
     SH               varchar(30),
     GDP              varchar(30),
     SB               varchar(30),
     CS               varchar(30),
     AVERAGE          float(3,3),
     BB_percent       varchar(10),
     K_percent        varchar(10),
     OBP              float(3,3),
     SLG              float(3,3),
     OPS              float(3,3),
     ISO              float(3,3),
     BABIP            float(3,3),
     wOBA             float(3,3),
     wRAA             float(3,1),
     wRC              varchar(30),
     wRC_plus         varchar(30),
     playerid         varchar(30)        PRIMARY KEY not null
);

create table L_as_R (
     name             varchar(30)     not null,
     team             varchar(30),
     G                varchar(30),
     AB               varchar(30),
     PA               varchar(30),
     H                varchar(30),
     One_B            varchar(30),
     Two_B            varchar(30),
     Three_B          varchar(30),
     HR               varchar(30),
     R                varchar(30),
     RBI              varchar(30),
     BB               varchar(30),
     IBB              varchar(30),
     SO               varchar(30),
     HBP              varchar(30),
     SF               varchar(30),
     SH               varchar(30),
     GDP              varchar(30),
     SB               varchar(30),
     CS               varchar(30),
     AVERAGE          float(3,3),
     BB_percent       varchar(10),
     K_percent        varchar(10),
     OBP              float(3,3),
     SLG              float(3,3),
     OPS              float(3,3),
     ISO              float(3,3),
     BABIP            float(3,3),
     wOBA             float(3,3),
     wRAA             float(3,1),
     wRC              varchar(30),
     wRC_plus         varchar(30),
     playerid         varchar(30)           PRIMARY KEY not null
);
create table R_as_R (
     name             varchar(30)     not null,
     team             varchar(30),
     G                varchar(30),
     AB               varchar(30),
     PA               varchar(30),
     H                varchar(30),
     One_B            varchar(30),
     Two_B            varchar(30),
     Three_B          varchar(30),
     HR               varchar(30),
     R                varchar(30),
     RBI              varchar(30),
     BB               varchar(30),
     IBB              varchar(30),
     SO               varchar(30),
     HBP              varchar(30),
     SF               varchar(30),
     SH               varchar(30),
     GDP              varchar(30),
     SB               varchar(30),
     CS               varchar(30),
     AVERAGE          float(3,3),
     BB_percent       varchar(10),
     K_percent        varchar(10),
     OBP              float(3,3),
     SLG              float(3,3),
     OPS              float(3,3),
     ISO              float(3,3),
     BABIP            float(3,3),
     wOBA             float(3,3),
     wRAA             float(3,1),
     wRC              varchar(30),
     wRC_plus         varchar(30),
     playerid         varchar(30)           PRIMARY KEY not null
);
create table R_as_L (
name             varchar(30)     not null,
team             varchar(30),
G                varchar(30),
AB               varchar(30),
PA               varchar(30),
H                varchar(30),
One_B            varchar(30),
Two_B            varchar(30),
Three_B          varchar(30),
HR               varchar(30),
R                varchar(30),
RBI              varchar(30),
BB               varchar(30),
IBB              varchar(30),
SO               varchar(30),
HBP              varchar(30),
SF               varchar(30),
SH               varchar(30),
GDP              varchar(30),
SB               varchar(30),
CS               varchar(30),
AVERAGE          float(3,3),
BB_percent       varchar(10),
K_percent        varchar(10),
OBP              float(3,3),
SLG              float(3,3),
OPS              float(3,3),
ISO              float(3,3),
BABIP            float(3,3),
wOBA             float(3,3),
wRAA             float(3,1),
wRC              varchar(30),
wRC_plus         varchar(30),
playerid         varchar(30)           PRIMARY KEY not null
);
create table vs_L (
name             varchar(30)     not null,
team             varchar(30),
IP               varchar(30),
ERA              varchar(30),
TBF              varchar(30),
H                varchar(30),
R                varchar(30),
ER               varchar(30),
HR               varchar(30),
BB               varchar(30),
IBB              varchar(30),
HBP              varchar(30),
SO               varchar(30),
AVERAGE          float(3,3),
OBP              float(3,3),
SLG              float(3,3),
wOBA             float(3,3),
WHIP             float(3,2),
BABIP            float(3,3),
HR_nine          float(3,2),
H_nine           float(3,3),
xFIP             float(3,2),
K_percent        varchar(10),
playerid         varchar(30)          PRIMARY KEY not null
);
create table vs_R (
name             varchar(30)     not null,
team             varchar(30),
IP               varchar(30),
ERA              varchar(30),
TBF              varchar(30),
H                varchar(30),
R                varchar(30),
ER               varchar(30),
HR               varchar(30),
BB               varchar(30),
IBB              varchar(30),
HBP              varchar(30),
SO               varchar(30),
AVERAGE          float(3,3),
OBP              float(3,3),
SLG              float(3,3),
wOBA             float(3,3),
WHIP             float(3,2),
BABIP            float(3,3),
HR_nine          float(3,2),
H_nine           float(3,3),
xFIP             float(3,2),
K_percent        varchar(10),
playerid         varchar(30)          PRIMARY KEY not null
);
