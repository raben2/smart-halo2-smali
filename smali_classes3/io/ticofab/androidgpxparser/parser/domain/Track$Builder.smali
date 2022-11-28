.class public Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mTrackName:Ljava/lang/String;

.field private mTrackSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->mTrackSegments:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lio/ticofab/androidgpxparser/parser/domain/Track;
    .locals 2

    .line 39
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/Track;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ticofab/androidgpxparser/parser/domain/Track;-><init>(Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;Lio/ticofab/androidgpxparser/parser/domain/Track$1;)V

    return-object v0
.end method

.method public setTrackName(Ljava/lang/String;)Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;
    .locals 0

    .line 29
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->mTrackName:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackSegments(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/Track$Builder;->mTrackSegments:Ljava/util/List;

    return-object p0
.end method
