.class public Lcom/instabug/survey/e/a;
.super Ljava/lang/Object;
.source "AutoShowingManager.java"


# static fields
.field private static c:Lcom/instabug/survey/e/a;


# instance fields
.field a:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)Z
    .locals 0

    .line 60
    invoke-static {p1, p2}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveyById(J)Lcom/instabug/survey/models/Survey;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/instabug/survey/e/a;J)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/survey/e/a;->a(J)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized b()Lcom/instabug/survey/e/a;
    .locals 2

    const-class v0, Lcom/instabug/survey/e/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/survey/e/a;->c:Lcom/instabug/survey/e/a;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/survey/e/a;

    invoke-direct {v1}, Lcom/instabug/survey/e/a;-><init>()V

    sput-object v1, Lcom/instabug/survey/e/a;->c:Lcom/instabug/survey/e/a;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/survey/e/a;->c:Lcom/instabug/survey/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/instabug/survey/e/a;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/instabug/survey/e/a;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public a(Lcom/instabug/survey/d/c/a;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/instabug/survey/e/a$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/e/a$a;-><init>(Lcom/instabug/survey/e/a;Lcom/instabug/survey/d/c/a;)V

    iput-object v0, p0, Lcom/instabug/survey/e/a;->a:Ljava/lang/Runnable;

    .line 26
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/survey/e/a;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/instabug/library/PresentationManager;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/instabug/survey/models/Survey;)V
    .locals 1
    .param p1    # Lcom/instabug/survey/models/Survey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 27
    new-instance v0, Lcom/instabug/survey/e/a$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/survey/e/a$b;-><init>(Lcom/instabug/survey/e/a;Lcom/instabug/survey/models/Survey;)V

    iput-object v0, p0, Lcom/instabug/survey/e/a;->b:Ljava/lang/Runnable;

    .line 59
    invoke-static {}, Lcom/instabug/library/PresentationManager;->getInstance()Lcom/instabug/library/PresentationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/survey/e/a;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/instabug/library/PresentationManager;->show(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method
