.class public Lio/ticofab/androidgpxparser/parser/domain/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;
    }
.end annotation


# instance fields
.field private final mTrackName:Ljava/lang/String;

.field private final mTrackSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->access$000(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Track;->mTrackName:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->access$100(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Track;->mTrackSegments:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;Lio/ticofab/androidgpxparser/parser/domain/Track$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/ticofab/androidgpxparser/parser/domain/Track;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)V

    return-void
.end method


# virtual methods
.method public getTrackName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Track;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lio/ticofab/androidgpxparser/parser/domain/Track;->mTrackSegments:Ljava/util/List;

    return-object v0
.end method
