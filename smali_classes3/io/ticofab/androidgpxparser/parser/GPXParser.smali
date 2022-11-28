.class public Lio/ticofab/androidgpxparser/parser/GPXParser;
.super Ljava/lang/Object;
.source "GPXParser.java"


# static fields
.field private static final TAG_ELEVATION:Ljava/lang/String; = "ele"

.field private static final TAG_GPX:Ljava/lang/String; = "gpx"

.field private static final TAG_LAT:Ljava/lang/String; = "lat"

.field private static final TAG_LON:Ljava/lang/String; = "lon"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_ROUTE:Ljava/lang/String; = "rte"

.field private static final TAG_ROUTE_POINT:Ljava/lang/String; = "rtept"

.field private static final TAG_SEGMENT:Ljava/lang/String; = "trkseg"

.field private static final TAG_TIME:Ljava/lang/String; = "time"

.field private static final TAG_TRACK:Ljava/lang/String; = "trk"

.field private static final TAG_TRACK_POINT:Ljava/lang/String; = "trkpt"

.field private static final TAG_WAY_POINT:Ljava/lang/String; = "wpt"

.field private static final ns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readElevation(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 237
    sget-object v0, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v1, "ele"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 239
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "ele"

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private readGpx(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    sget-object v3, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v4, "gpx"

    const/4 v5, 0x2

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 71
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x1ba63

    if-eq v6, v7, :cond_3

    const v7, 0x1c1ad

    if-eq v6, v7, :cond_2

    const v7, 0x1ccbb

    if-eq v6, v7, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "wpt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const-string v6, "trk"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    const-string v6, "rte"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 82
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readTrack(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Track;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readRoute(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Route;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readWayPoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/WayPoint;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_5
    sget-object v3, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v5, "gpx"

    invoke-interface {p1, v4, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance p1, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;

    invoke-direct {p1}, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;-><init>()V

    .line 88
    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->setWayPoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1, v2}, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->setRoutes(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v1}, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->setTracks(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 230
    sget-object v0, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 232
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "name"

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private readPoint(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p2, v1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "lat"

    const/4 v2, 0x0

    .line 189
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->setLatitude(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;

    const-string v0, "lon"

    .line 190
    invoke-interface {p2, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->setLongitude(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;

    .line 192
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 193
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1889e

    if-eq v3, v4, :cond_3

    const v4, 0x337a8b

    if-eq v3, v4, :cond_2

    const v4, 0x3652cd

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "time"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const-string v3, "ele"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, -0x1

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-direct {p0, p2}, Lio/ticofab/androidgpxparser/parser/GPXParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 205
    :pswitch_0
    invoke-direct {p0, p2}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readTime(Lorg/xmlpull/v1/XmlPullParser;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->setTime(Lorg/joda/time/DateTime;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;

    goto :goto_0

    .line 202
    :pswitch_1
    invoke-direct {p0, p2}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readElevation(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->setElevation(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-direct {p0, p2}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->setName(Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;

    goto :goto_0

    .line 213
    :cond_5
    sget-object v0, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    invoke-interface {p2, v2, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/Point;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readRoute(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Route;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "rte"

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 160
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 164
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x67cbba7

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "rtept"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 169
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readRoutePoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    :cond_4
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v3, "rte"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p1, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;

    invoke-direct {p1}, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;-><init>()V

    .line 175
    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;->setRoutePoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/Route;

    move-result-object p1

    return-object p1
.end method

.method private readRoutePoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 226
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/RoutePoint$Builder;

    invoke-direct {v0}, Lio/ticofab/androidgpxparser/parser/domain/RoutePoint$Builder;-><init>()V

    const-string v1, "rtept"

    invoke-direct {p0, v0, p1, v1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readPoint(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point;

    move-result-object p1

    check-cast p1, Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;

    return-object p1
.end method

.method private readSegment(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "trkseg"

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    .line 129
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x6981871

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "trkpt"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 138
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readTrackPoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_4
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v3, "trkseg"

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;

    invoke-direct {p1}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;-><init>()V

    .line 144
    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;->setTrackPoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;

    move-result-object p1

    return-object p1
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, ""

    .line 252
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 253
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_0
    return-object v0
.end method

.method private readTime(Lorg/xmlpull/v1/XmlPullParser;)Lorg/joda/time/DateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 244
    sget-object v0, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v1, "time"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 246
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "time"

    const/4 v3, 0x3

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private readTrack(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Track;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    sget-object v1, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v2, "trk"

    const/4 v3, 0x2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 100
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    .line 101
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    .line 105
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x33950078

    if-eq v5, v6, :cond_2

    const v6, 0x337a8b

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const-string v5, "trkseg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 113
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readSegment(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    :cond_4
    sget-object v2, Lio/ticofab/androidgpxparser/parser/GPXParser;->ns:Ljava/lang/String;

    const-string v3, "trk"

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance p1, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;

    invoke-direct {p1}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;-><init>()V

    .line 119
    invoke-virtual {p1, v1}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->setTrackName(Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->setTrackSegments(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/Track;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readTrackPoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 222
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/TrackPoint$Builder;

    invoke-direct {v0}, Lio/ticofab/androidgpxparser/parser/domain/TrackPoint$Builder;-><init>()V

    const-string v1, "trkpt"

    invoke-direct {p0, v0, p1, v1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readPoint(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point;

    move-result-object p1

    check-cast p1, Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;

    return-object p1
.end method

.method private readWayPoint(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/WayPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/WayPoint$Builder;

    invoke-direct {v0}, Lio/ticofab/androidgpxparser/parser/domain/WayPoint$Builder;-><init>()V

    const-string v1, "wpt"

    invoke-direct {p0, v0, p1, v1}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readPoint(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point;

    move-result-object p1

    check-cast p1, Lio/ticofab/androidgpxparser/parser/domain/WayPoint;

    return-object p1
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 261
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    .line 50
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    .line 51
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 53
    invoke-direct {p0, v0}, Lio/ticofab/androidgpxparser/parser/GPXParser;->readGpx(Lorg/xmlpull/v1/XmlPullParser;)Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public parse(Ljava/lang/String;Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;)V
    .locals 1

    .line 44
    new-instance v0, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;

    invoke-direct {v0, p1, p2}, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;-><init>(Ljava/lang/String;Lio/ticofab/androidgpxparser/parser/task/GpxFetchedAndParsed;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lio/ticofab/androidgpxparser/parser/task/FetchAndParseGPXTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
