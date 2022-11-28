.class public abstract Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
.super Ljava/lang/Object;
.source "Point.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# instance fields
.field private mElevation:Ljava/lang/Double;

.field private mLatitude:Ljava/lang/Double;

.field private mLongitude:Ljava/lang/Double;

.field private mName:Ljava/lang/String;

.field private mTime:Lorg/joda/time/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$100(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$200(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/Double;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mElevation:Ljava/lang/Double;

    return-object p0
.end method

.method static synthetic access$300(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Lorg/joda/time/DateTime;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mTime:Lorg/joda/time/DateTime;

    return-object p0
.end method

.method static synthetic access$400(Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public abstract build()Lio/ticofab/androidgpxparser/parser/domain/Point;
.end method

.method public setElevation(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    .locals 0

    .line 74
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mElevation:Ljava/lang/Double;

    return-object p0
.end method

.method public setLatitude(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    .locals 0

    .line 64
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mLatitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setLongitude(Ljava/lang/Double;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    .locals 0

    .line 69
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mLongitude:Ljava/lang/Double;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    .locals 0

    .line 84
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setTime(Lorg/joda/time/DateTime;)Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;->mTime:Lorg/joda/time/DateTime;

    return-object p0
.end method
