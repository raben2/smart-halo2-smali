.class public Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;
.super Ljava/lang/Object;
.source "TrackSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mTrackPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;",
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

.method static synthetic access$000(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;->mTrackPoints:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;
    .locals 2

    .line 27
    new-instance v0, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment;-><init>(Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$1;)V

    return-object v0
.end method

.method public setTrackPoints(Ljava/util/List;)Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackPoint;",
            ">;)",
            "Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lio/ticofab/androidgpxparser/parser/domain/TrackSegment$Builder;->mTrackPoints:Ljava/util/List;

    return-object p0
.end method
