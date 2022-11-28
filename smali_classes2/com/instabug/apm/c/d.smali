.class public Lcom/instabug/apm/c/d;
.super Ljava/lang/Object;
.source "APMConfigurationProviderImpl.java"

# interfaces
.implements Lcom/instabug/apm/c/c;


# instance fields
.field private a:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/instabug/apm/c/e;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/instabug/apm/e/a;->G()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-static {}, Lcom/instabug/apm/e/a;->e()Lcom/instabug/apm/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "IS_APM_SDK_ENABLED"

    invoke-interface {v0, v2, v1}, Lcom/instabug/apm/c/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "LAUNCHES_SDK_ENABLED"

    invoke-interface {v0, v2, v1}, Lcom/instabug/apm/c/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "UI_TRACE_SDK_ENABLED"

    invoke-interface {v0, v2, v1}, Lcom/instabug/apm/c/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a()J
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x9c4

    if-eqz v0, :cond_0

    const-string v3, "LAUNCHES_STORE_LIMIT"

    .line 8
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public a(F)V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "UI_TRACE_SMALL_DROP_THRESHOLD"

    .line 12
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "TRACES_ATTRIBUTES_COUNT"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "LAUNCHES_STORE_LIMIT"

    .line 10
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "KEY_DISABLED_SDK_VERSIONS"

    .line 14
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "TRACES_ENABLED"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->z()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "LAST_SYNC_TIME"

    .line 4
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public b(F)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "UI_TRACE_LARGE_DROP_THRESHOLD"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "LOG_LEVEL"

    invoke-interface {v0, v1, p1}, Lcom/instabug/apm/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "LAUNCHES_PER_REQUEST_LIMIT"

    .line 2
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "CRASH_DETECTION_ENABLED"

    .line 8
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "NETWORK_LOGS_CACHE_LIMIT"

    .line 5
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "LAUNCHES_ENABLED"

    .line 3
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/apm/c/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()F
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const v1, 0x46827800    # 16700.0f

    if-eqz v0, :cond_0

    const-string v2, "UI_TRACE_SMALL_DROP_THRESHOLD"

    .line 4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "TRACES_STORE_LIMIT"

    .line 2
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "DEBUG_MODE_ENABLED"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public e(J)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "KEY_UI_TRACE_STORE_LIMIT"

    .line 5
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "IS_APM_SDK_ENABLED"

    invoke-interface {v0, v1, p1}, Lcom/instabug/apm/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "LAUNCHES_ENABLED"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public f()I
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "LOG_LEVEL"

    invoke-interface {v0, v2, v1}, Lcom/instabug/apm/c/e;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "TRACES_PER_REQUEST_LIMIT"

    .line 4
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "IS_APM_FEATURE_AVAILABLE"

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public g(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "NETWORK_LOGS_REQUEST_LIMIT"

    .line 4
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "UI_TRACE_SDK_ENABLED"

    invoke-interface {v0, v1, p1}, Lcom/instabug/apm/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "NETWORK_ENABLED"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public h()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    const-string v3, "NETWORK_LOGS_REQUEST_LIMIT"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public h(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "KEY_UI_TRACE_LIMIT_PER_REQUEST"

    .line 4
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "UI_TRACE_ENABLED"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public i()J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    const-string v3, "TRACES_PER_REQUEST_LIMIT"

    .line 4
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public i(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "SYNC_INTERVAL"

    .line 2
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->c:Lcom/instabug/apm/c/e;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "LAUNCHES_SDK_ENABLED"

    invoke-interface {v0, v1, p1}, Lcom/instabug/apm/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public j()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    const-string v2, "TRACES_ATTRIBUTES_COUNT"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public j(J)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "LAST_SYNC_TIME"

    .line 6
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/apm/c/d;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    const-string v1, "NETWORK_ENABLED"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "UI_TRACE_ENABLED"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    const-string v3, "LAUNCHES_PER_REQUEST_LIMIT"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public n()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x1f4

    if-eqz v0, :cond_0

    const-string v3, "KEY_UI_TRACE_LIMIT_PER_REQUEST"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public o()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const v1, 0x48742400    # 250000.0f

    if-eqz v0, :cond_0

    const-string v2, "UI_TRACE_LARGE_DROP_THRESHOLD"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x5460

    if-eqz v0, :cond_0

    const-string v3, "SYNC_INTERVAL"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public r()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x9c4

    if-eqz v0, :cond_0

    const-string v3, "NETWORK_LOGS_CACHE_LIMIT"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public s()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "CRASH_DETECTION_ENABLED"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public t()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "TRACES_ENABLED"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public u()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DEBUG_MODE_ENABLED"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public v()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x9c4

    if-eqz v0, :cond_0

    const-string v3, "TRACES_STORE_LIMIT"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public w()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/apm/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x9c4

    if-eqz v0, :cond_0

    const-string v3, "KEY_UI_TRACE_STORE_LIMIT"

    .line 2
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "IS_APM_FEATURE_AVAILABLE"

    .line 2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public z()Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/apm/c/d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "KEY_DISABLED_SDK_VERSIONS"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
