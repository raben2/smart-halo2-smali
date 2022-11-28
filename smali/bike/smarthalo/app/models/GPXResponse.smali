.class public Lbike/smarthalo/app/models/GPXResponse;
.super Ljava/lang/Object;
.source "GPXResponse.java"


# instance fields
.field private gpx:Lio/ticofab/androidgpxparser/parser/domain/Gpx;

.field private response:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Gpx;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lbike/smarthalo/app/models/GPXResponse;->response:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lbike/smarthalo/app/models/GPXResponse;->gpx:Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    return-void
.end method


# virtual methods
.method public getGpx()Lio/ticofab/androidgpxparser/parser/domain/Gpx;
    .locals 1

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/models/GPXResponse;->gpx:Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/models/GPXResponse;->response:Ljava/lang/String;

    return-object v0
.end method
