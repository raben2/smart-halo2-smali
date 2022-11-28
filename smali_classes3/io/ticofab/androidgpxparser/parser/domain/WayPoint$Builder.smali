.class public Lio/ticofab/androidgpxparser/parser/domain/WayPoint$Builder;
.super Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;
.source "WayPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/WayPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lio/ticofab/androidgpxparser/parser/domain/Point$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lio/ticofab/androidgpxparser/parser/domain/Point;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lio/ticofab/androidgpxparser/parser/domain/WayPoint$Builder;->build()Lio/ticofab/androidgpxparser/parser/domain/WayPoint;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/ticofab/androidgpxparser/parser/domain/WayPoint;
    .locals 2

    .line 16
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/WayPoint;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ticofab/androidgpxparser/parser/domain/WayPoint;-><init>(Lio/ticofab/androidgpxparser/parser/domain/WayPoint$Builder;Lio/ticofab/androidgpxparser/parser/domain/WayPoint$1;)V

    return-object v0
.end method
