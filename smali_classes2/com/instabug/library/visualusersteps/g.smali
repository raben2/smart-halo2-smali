.class public Lcom/instabug/library/visualusersteps/g;
.super Ljava/lang/Object;
.source "VisualUserSteps.java"


# instance fields
.field private a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/instabug/library/visualusersteps/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/g;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/g;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 24
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualUserStep screenshot deleted! filename= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VisualUserSteps"

    .line 32
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t delete screenshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Something went wrong"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Couldn\'t execute deleteFile(). File does not exist"

    goto :goto_0

    :cond_2
    const-string p1, "Couldn\'t execute deleteFile(). Context is null"

    :goto_0
    const-string v0, "VisualUserSteps"

    .line 38
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RV_RETURN_VALUE_IGNORED"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/g;->c(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/instabug/library/visualusersteps/g$a;

    invoke-direct {v0, p0}, Lcom/instabug/library/visualusersteps/g$a;-><init>(Lcom/instabug/library/visualusersteps/g;)V

    .line 14
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private b(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/VisualUserStep;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/c;->b()Lcom/instabug/library/visualusersteps/VisualUserStep;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "START_EDITING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getScreenName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private c(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/visualusersteps/g$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/visualusersteps/g$b;-><init>(Lcom/instabug/library/visualusersteps/g;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private g()Lcom/instabug/library/visualusersteps/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/c;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->d()Lcom/instabug/library/visualusersteps/c$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/instabug/library/visualusersteps/c$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/library/visualusersteps/g;->b(Ljava/lang/String;)V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->f()I

    move-result v0

    .line 9
    iget v1, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    .line 10
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method a()Lcom/instabug/library/visualusersteps/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/c;

    return-object v0
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 23
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/g;->h()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Lcom/instabug/library/visualusersteps/c;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/VisualUserStep;)V
    .locals 2

    .line 6
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "END_EDITING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/visualusersteps/g;->b(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/VisualUserStep;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 13
    :cond_1
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "START_EDITING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a text field"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p2}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getView()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/StringUtility;->applyDoubleQuotations(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->setView(Ljava/lang/String;)V

    .line 20
    :cond_2
    invoke-virtual {p1, p2}, Lcom/instabug/library/visualusersteps/c;->a(Lcom/instabug/library/visualusersteps/VisualUserStep;)V

    .line 21
    iget p1, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    return-void
.end method

.method b()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/instabug/library/visualusersteps/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    return-object v0
.end method

.method c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/g;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    return v0
.end method

.method d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    return v0
.end method

.method e()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/g;->g()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->f()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    .line 4
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/g;->g()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/g;->g()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->i()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/g;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method f()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->e()Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/visualusersteps/VisualUserStep;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/VisualUserStep;->getStepType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/g;->a()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/c;->j()V

    .line 5
    iget v0, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/instabug/library/visualusersteps/g;->b:I

    :cond_0
    return-void
.end method
