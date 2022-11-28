.class public abstract Lio/ticofab/androidgpxparser/parser/domain/Point;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    }
.end annotation


# instance fields
.field private final mElevation:Ljava/lang/Double;

.field private final mLatitude:Ljava/lang/Double;

.field private final mLongitude:Ljava/lang/Double;

.field private mName:Ljava/lang/String;

.field private final mTime:Lorg/joda/time/DateTime;


# direct methods
.method constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->access$000(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mLatitude:Ljava/lang/Double;

    .line 18
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->access$100(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mLongitude:Ljava/lang/Double;

    .line 19
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->access$200(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mElevation:Ljava/lang/Double;

    .line 20
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->access$300(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Lorg/joda/time/DateTime;

    move-result-object v0

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mTime:Lorg/joda/time/DateTime;

    .line 21
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->access$400(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getElevation()Ljava/lang/Double;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mElevation:Ljava/lang/Double;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mLatitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 35
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mLongitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Lorg/joda/time/DateTime;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point;->mTime:Lorg/joda/time/DateTime;

    return-object v0
.end method
