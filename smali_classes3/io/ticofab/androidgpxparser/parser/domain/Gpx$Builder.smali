.class public Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;
.super Ljava/lang/Object;
.source "Gpx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/Gpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/Route;",
            ">;"
        }
    .end annotation
.end field

.field private mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mWayPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/WayPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mWayPoints:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mRoutes:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mTracks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lio/ticofab/androidgpxparser/parser/domain/Gpx;
    .locals 2

    .line 51
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/Gpx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ticofab/androidgpxparser/parser/domain/Gpx;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;Lio/ticofab/androidgpxparser/parser/domain/Gpx$1;)V

    return-object v0
.end method

.method public setRoutes(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/Route;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mRoutes:Ljava/util/List;

    return-object p0
.end method

.method public setTracks(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/Track;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mTracks:Ljava/util/List;

    return-object p0
.end method

.method public setWayPoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/WayPoint;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Gpx$Builder;->mWayPoints:Ljava/util/List;

    return-object p0
.end method
