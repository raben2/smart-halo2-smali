.class Lcom/squareup/seismic/ShakeDetector$SampleQueue;
.super Ljava/lang/Object;
.source "ShakeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/seismic/ShakeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SampleQueue"
.end annotation


# static fields
.field private static final MAX_WINDOW_SIZE:J = 0x1dcd6500L

.field private static final MIN_QUEUE_SIZE:I = 0x4

.field private static final MIN_WINDOW_SIZE:J = 0xee6b280L


# instance fields
.field private acceleratingCount:I

.field private newest:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

.field private final pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

.field private sampleCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-direct {v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;-><init>()V

    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    return-void
.end method


# virtual methods
.method add(JZ)V
    .locals 2

    const-wide/32 v0, 0x1dcd6500

    sub-long v0, p1, v0

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->purge(J)V

    .line 155
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->acquire()Lcom/squareup/seismic/ShakeDetector$Sample;

    move-result-object v0

    .line 156
    iput-wide p1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    .line 157
    iput-boolean p3, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->accelerating:Z

    const/4 p1, 0x0

    .line 158
    iput-object p1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 159
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz p1, :cond_0

    .line 160
    iput-object v0, p1, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 162
    :cond_0
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 163
    iget-object p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez p1, :cond_1

    .line 164
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 168
    :cond_1
    iget p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    if-eqz p3, :cond_2

    .line 170
    iget p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    :cond_2
    return-void
.end method

.method asList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/seismic/ShakeDetector$Sample;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    :goto_0
    if-eqz v1, :cond_0

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, v1, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method clear()V
    .locals 2

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 202
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->release(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    .line 206
    iput v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    return-void
.end method

.method isShaking()Z
    .locals 5

    .line 227
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    iget-object v2, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    iget-wide v2, v2, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xee6b280

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method purge(J)V
    .locals 5

    .line 179
    :goto_0
    iget v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-eqz v0, :cond_2

    iget-wide v0, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->timestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 181
    iget-object v0, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 182
    iget-boolean v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->accelerating:Z

    if-eqz v1, :cond_0

    .line 183
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->acceleratingCount:I

    .line 185
    :cond_0
    iget v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->sampleCount:I

    .line 187
    iget-object v1, v0, Lcom/squareup/seismic/ShakeDetector$Sample;->next:Lcom/squareup/seismic/ShakeDetector$Sample;

    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 188
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->oldest:Lcom/squareup/seismic/ShakeDetector$Sample;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->newest:Lcom/squareup/seismic/ShakeDetector$Sample;

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/squareup/seismic/ShakeDetector$SampleQueue;->pool:Lcom/squareup/seismic/ShakeDetector$SamplePool;

    invoke-virtual {v1, v0}, Lcom/squareup/seismic/ShakeDetector$SamplePool;->release(Lcom/squareup/seismic/ShakeDetector$Sample;)V

    goto :goto_0

    :cond_2
    return-void
.end method
