.class public Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/Route;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRoutePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;->mRoutePoints:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lio/ticofab/androidgpxparser/parser/domain/Route;
    .locals 2

    .line 27
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/Route;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ticofab/androidgpxparser/parser/domain/Route;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;Lio/ticofab/androidgpxparser/parser/domain/Route$1;)V

    return-object v0
.end method

.method public setRoutePoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;->mRoutePoints:Ljava/util/List;

    return-object p0
.end method
