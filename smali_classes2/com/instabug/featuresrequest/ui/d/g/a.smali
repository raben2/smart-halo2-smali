.class public Lcom/instabug/featuresrequest/ui/d/g/a;
.super Lcom/instabug/featuresrequest/ui/b/a;
.source "MainMyFeaturesDao.java"


# static fields
.field private static volatile c:Lcom/instabug/featuresrequest/ui/d/g/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/a;-><init>()V

    .line 2
    sget-object v0, Lcom/instabug/featuresrequest/ui/d/g/a;->c:Lcom/instabug/featuresrequest/ui/d/g/a;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e()Lcom/instabug/featuresrequest/ui/d/g/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/ui/d/g/a;->c:Lcom/instabug/featuresrequest/ui/d/g/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/instabug/featuresrequest/ui/d/g/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/instabug/featuresrequest/ui/d/g/a;->c:Lcom/instabug/featuresrequest/ui/d/g/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/featuresrequest/ui/d/g/a;

    invoke-direct {v1}, Lcom/instabug/featuresrequest/ui/d/g/a;-><init>()V

    sput-object v1, Lcom/instabug/featuresrequest/ui/d/g/a;->c:Lcom/instabug/featuresrequest/ui/d/g/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/instabug/featuresrequest/ui/d/g/a;->c:Lcom/instabug/featuresrequest/ui/d/g/a;

    return-object v0
.end method


# virtual methods
.method protected a(I)Lcom/instabug/featuresrequest/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/d/b;

    return-object p1
.end method

.method protected a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/instabug/featuresrequest/d/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    return-object v0
.end method

.method protected c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/g/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
