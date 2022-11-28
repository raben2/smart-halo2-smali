.class public Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;
.super Ljava/lang/Object;
.source "TrackSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;
    }
.end annotation


# instance fields
.field private final mTrackPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;->access$000(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;->mTrackPoints:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;-><init>(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;)V

    return-void
.end method


# virtual methods
.method public getTrackPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;->mTrackPoints:Ljava/util/List;

    return-object v0
.end method
