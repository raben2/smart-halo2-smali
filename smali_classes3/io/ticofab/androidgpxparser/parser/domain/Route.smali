.class public Lio/ticofab/androidgpxparser/parser/domain/Route;
.super Ljava/lang/Object;
.source "Route.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;
    }
.end annotation


# instance fields
.field private final mRoutePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;->access$000(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Route;->mRoutePoints:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;Lio/ticofab/androidgpxparser/parser/domain/Route$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/domain/Route;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Route$Builder;)V

    return-void
.end method


# virtual methods
.method public getRoutePoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/RoutePoint;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Route;->mRoutePoints:Ljava/util/List;

    return-object v0
.end method
