.class public Lcom/instabug/library/settings/a;
.super Ljava/lang/Object;
.source "PerSessionSettings.java"


# static fields
.field private static B:Lcom/instabug/library/settings/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private a:I

.field private b:I

.field private c:J

.field private d:Z

.field private e:Ljava/util/Locale;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/instabug/library/InstabugCustomTextPlaceHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Ljava/util/LinkedHashMap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/instabug/library/invocation/OnInvokeCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/instabug/library/OnSdkDismissCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/instabug/library/OnSdkInvokedCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/instabug/library/InstabugColorTheme;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/instabug/library/model/Report$OnReportCreatedListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private w:Z

.field private x:Lcom/instabug/library/Feature$State;

.field private final y:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xf28501

    .line 2
    iput v0, p0, Lcom/instabug/library/settings/a;->a:I

    const v0, -0x3a3939

    .line 3
    iput v0, p0, Lcom/instabug/library/settings/a;->b:I

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    .line 20
    sget-object v0, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    iput-object v0, p0, Lcom/instabug/library/settings/a;->l:Lcom/instabug/library/InstabugColorTheme;

    const/4 v0, -0x2

    .line 22
    iput v0, p0, Lcom/instabug/library/settings/a;->m:I

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->n:Z

    .line 24
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->o:Z

    .line 25
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->p:Z

    .line 26
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->q:Z

    const/16 v1, 0x7530

    .line 27
    iput v1, p0, Lcom/instabug/library/settings/a;->r:I

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/instabug/library/settings/a;->s:Z

    .line 29
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->t:Z

    .line 30
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->u:Z

    .line 33
    iput-boolean v0, p0, Lcom/instabug/library/settings/a;->w:Z

    .line 34
    sget-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    iput-object v0, p0, Lcom/instabug/library/settings/a;->x:Lcom/instabug/library/Feature$State;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/library/settings/a;->y:Ljava/util/Collection;

    .line 36
    iput-boolean v1, p0, Lcom/instabug/library/settings/a;->z:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/instabug/library/settings/a;->A:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/settings/a;->f:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static declared-synchronized D()Lcom/instabug/library/settings/a;
    .locals 2

    const-class v0, Lcom/instabug/library/settings/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/settings/a;->B:Lcom/instabug/library/settings/a;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/instabug/library/settings/a;

    invoke-direct {v1}, Lcom/instabug/library/settings/a;-><init>()V

    sput-object v1, Lcom/instabug/library/settings/a;->B:Lcom/instabug/library/settings/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized E()V
    .locals 2

    const-class v0, Lcom/instabug/library/settings/a;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sput-object v1, Lcom/instabug/library/settings/a;->B:Lcom/instabug/library/settings/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->t:Z

    return v0
.end method

.method public B()V
    .locals 1

    const/4 v0, -0x2

    .line 1
    iput v0, p0, Lcom/instabug/library/settings/a;->m:I

    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/settings/a;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public a(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object p1, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/instabug/library/settings/a;->r:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/instabug/library/settings/a;->c:J

    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/instabug/library/internal/storage/AttachmentsUtility;->validateFileSize(Landroid/net/Uri;D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 19
    iget-object v1, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/library/Feature$State;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/instabug/library/settings/a;->x:Lcom/instabug/library/Feature$State;

    return-void
.end method

.method public a(Lcom/instabug/library/InstabugColorTheme;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/instabug/library/settings/a;->l:Lcom/instabug/library/InstabugColorTheme;

    return-void
.end method

.method public a(Lcom/instabug/library/InstabugCustomTextPlaceHolder;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/instabug/library/settings/a;->g:Lcom/instabug/library/InstabugCustomTextPlaceHolder;

    return-void
.end method

.method public a(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/library/OnSdkDismissCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    iput-object p1, p0, Lcom/instabug/library/settings/a;->j:Lcom/instabug/library/OnSdkDismissCallback;

    return-void
.end method

.method public a(Lcom/instabug/library/OnSdkInvokedCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/library/OnSdkInvokedCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/library/settings/a;->k:Lcom/instabug/library/OnSdkInvokedCallback;

    return-void
.end method

.method public a(Lcom/instabug/library/invocation/OnInvokeCallback;)V
    .locals 0
    .param p1    # Lcom/instabug/library/invocation/OnInvokeCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/settings/a;->i:Lcom/instabug/library/invocation/OnInvokeCallback;

    return-void
.end method

.method a(Lcom/instabug/library/model/Report$OnReportCreatedListener;)V
    .locals 0
    .param p1    # Lcom/instabug/library/model/Report$OnReportCreatedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/instabug/library/settings/a;->v:Lcom/instabug/library/model/Report$OnReportCreatedListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lcom/instabug/library/settings/a;->A:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/instabug/library/settings/a;->e:Ljava/util/Locale;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->o:Z

    return-void
.end method

.method public varargs a([Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/instabug/library/settings/a;->y:Ljava/util/Collection;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/instabug/library/settings/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    if-eqz v2, :cond_1

    const-string v3, "null"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/instabug/library/settings/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->q:Z

    return v0
.end method

.method public b()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/instabug/library/settings/a;->r:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/instabug/library/settings/a;->a:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->q:Z

    return-void
.end method

.method public varargs b([Landroid/view/View;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/library/settings/a;->y:Ljava/util/Collection;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    :goto_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/instabug/library/settings/a;->m:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->z:Z

    return-void
.end method

.method public d()Lcom/instabug/library/Feature$State;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/settings/a;->x:Lcom/instabug/library/Feature$State;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/settings/a;->b:I

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->u:Z

    return-void
.end method

.method public e()Lcom/instabug/library/InstabugCustomTextPlaceHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->g:Lcom/instabug/library/InstabugCustomTextPlaceHolder;

    return-object v0
.end method

.method public e(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->w:Z

    return-void
.end method

.method public f()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method f(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->d:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/settings/a;->A:Ljava/lang/String;

    return-object v0
.end method

.method g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->s:Z

    return-void
.end method

.method public h()Lcom/instabug/library/invocation/OnInvokeCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->i:Lcom/instabug/library/invocation/OnInvokeCallback;

    return-object v0
.end method

.method h(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->p:Z

    return-void
.end method

.method i()Lcom/instabug/library/model/Report$OnReportCreatedListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/settings/a;->v:Lcom/instabug/library/model/Report$OnReportCreatedListener;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->n:Z

    return-void
.end method

.method public j()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->j:Lcom/instabug/library/OnSdkDismissCallback;

    return-object v0
.end method

.method public j(Z)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/instabug/library/settings/a;->t:Z

    :cond_0
    return-void
.end method

.method public k()Lcom/instabug/library/OnSdkInvokedCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->k:Lcom/instabug/library/OnSdkInvokedCallback;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/settings/a;->a:I

    return v0
.end method

.method public m()Ljava/util/Collection;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->y:Ljava/util/Collection;

    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/settings/a;->m:I

    return v0
.end method

.method public o()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/settings/a;->c:J

    return-wide v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/library/settings/a;->b:I

    return v0
.end method

.method public q()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public r()Lcom/instabug/library/InstabugColorTheme;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/settings/a;->l:Lcom/instabug/library/InstabugColorTheme;

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->o:Z

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->z:Z

    return v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->u:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->w:Z

    return v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->d:Z

    return v0
.end method

.method x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->s:Z

    return v0
.end method

.method y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->p:Z

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/settings/a;->n:Z

    return v0
.end method
