.class public Lcom/instabug/library/n/b/a/e;
.super Ljava/lang/Object;
.source "SessionProfilerTimeline.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    .line 7
    invoke-static {}, Lcom/instabug/library/util/DeviceStateProvider;->getTotalStorage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instabug/library/n/b/a/e;->f:J

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/instabug/library/n/b/a/e;
    .locals 3

    .line 54
    new-instance v0, Lcom/instabug/library/n/b/a/e;

    invoke-direct {v0}, Lcom/instabug/library/n/b/a/e;-><init>()V

    :try_start_0
    const-string v1, "battery"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 58
    invoke-static {v1}, Lcom/instabug/library/n/b/a/a;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    const-string v1, "connectivity"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lcom/instabug/library/n/b/a/b;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    const-string v1, "orientation"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/instabug/library/n/b/a/d;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    const-string v1, "memory"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timeline"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/instabug/library/n/b/a/c;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    const-string v1, "storage"

    .line 78
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "timeline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 79
    invoke-static {p0}, Lcom/instabug/library/n/b/a/c;->a(Lorg/json/JSONArray;)Ljava/util/Collection;

    move-result-object p0

    iput-object p0, v0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;I)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 25
    instance-of v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 31
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-object v0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 38
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_2
    if-ltz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/n/b/a/f;

    if-eqz v1, :cond_3

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 50
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 51
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private a(Ljava/util/Collection;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/instabug/library/n/b/a/f;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "timeline"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Ljava/util/Collection;F)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/instabug/library/n/b/a/f;",
            ">;F)V"
        }
    .end annotation

    .line 6
    instance-of v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 11
    :goto_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/n/b/a/f;

    int-to-float v4, v2

    div-float/2addr v4, p1

    const v5, 0x476a6000    # 60000.0f

    mul-float v4, v4, v5

    float-to-long v4, v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/instabug/library/n/b/a/f;->a(D)V

    .line 18
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 23
    invoke-interface {p0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/instabug/library/n/b/a/e;->f:J

    return-wide v0
.end method

.method public a(FZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    new-instance v1, Lcom/instabug/library/n/b/a/a;

    invoke-direct {v1, p1, p2}, Lcom/instabug/library/n/b/a/a;-><init>(FZ)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/instabug/library/n/b/a/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/instabug/library/n/b/a/c;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/instabug/library/n/b/a/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;F)V

    .line 4
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;F)V

    .line 6
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;F)V

    .line 8
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v0, v1}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;F)V

    .line 10
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    invoke-static {v0, v1}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;F)V

    .line 13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "version"

    const/4 v2, 0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "platform"

    const-string v3, "Android"

    .line 17
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "battery"

    :try_start_1
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    .line 18
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "orientation"

    :try_start_2
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    .line 19
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "battery"

    :try_start_3
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    .line 20
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "connectivity"

    :try_start_4
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    .line 21
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "memory"

    :try_start_5
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    .line 22
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "storage"

    :try_start_6
    iget-object v3, p0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    .line 23
    invoke-direct {p0, v3}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v4, "total"

    .line 24
    :try_start_7
    invoke-virtual {p0}, Lcom/instabug/library/n/b/a/e;->a()J

    move-result-wide v5

    .line 25
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public b(Lcom/instabug/library/n/b/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/instabug/library/n/b/a/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/instabug/library/n/b/a/e;

    invoke-direct {v0}, Lcom/instabug/library/n/b/a/e;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->a:Ljava/util/Collection;

    .line 6
    iget-object v1, p0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->b:Ljava/util/Collection;

    .line 9
    iget-object v1, p0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->c:Ljava/util/Collection;

    .line 12
    iget-object v1, p0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->d:Ljava/util/Collection;

    .line 15
    iget-object v1, p0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/instabug/library/n/b/a/e;->a(Ljava/util/Collection;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    iput-object v1, v0, Lcom/instabug/library/n/b/a/e;->e:Ljava/util/Collection;

    .line 18
    iget-wide v1, p0, Lcom/instabug/library/n/b/a/e;->f:J

    iput-wide v1, v0, Lcom/instabug/library/n/b/a/e;->f:J

    return-object v0
.end method
