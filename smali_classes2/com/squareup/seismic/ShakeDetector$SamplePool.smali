.class Lcom/squareup/seismic/ShakeDetector$SamplePool;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/seismic/ShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SamplePool"
.end annotation


# instance fields
.field private head:Lcom/squareup/seismic/ShakeDetector$Sample;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method acquire()Lcom/squareup/seismic/ShakeDetector$Sample;
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$Sample;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$Sample;-><init>()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    :goto_0
    return-object v0
.end method

.method release(Lcom/squareup/seismic/ShakeDetector$Sample;)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v0, p1, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 279
    iput-object p1, p0, Lcom/squareup/seismic/ShakeDetector$SamplePool;->head:Lcom/squareup/seismic/ShakeDetector$Sample;

    return-void
.end method
