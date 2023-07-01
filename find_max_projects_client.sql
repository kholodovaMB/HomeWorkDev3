{\rtf1\ansi\ansicpg1251\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red21\green23\blue25;\red244\green245\blue246;}
{\*\expandedcolortbl;;\cssrgb\c10980\c11765\c12941;\cssrgb\c96471\c96863\c97255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs28 \cf2 \cb3 \expnd0\expndtw0\kerning0
select name, count(*) AS project_count\
from project\
join client on client.ID = CLIENT_ID\
group by client_id\
HAVING COUNT(*) = (\
  SELECT MAX(project_count)\
  FROM (\
    SELECT COUNT(*) AS project_count\
    FROM project\
    GROUP BY CLIENT_ID\
  ) project\
);}