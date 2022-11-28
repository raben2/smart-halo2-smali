.class public Lcom/instabug/survey/g/c;
.super Ljava/lang/Object;
.source "SurveysSettings.java"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/instabug/survey/g/c;->a:J

    return-void
.end method

.method public static a()V
    .locals 1

    .line 5
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->a()V

    return-void
.end method

.method public static a(II)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/survey/g/b;->a(II)V

    return-void
.end method

.method public static a(J)V
    .locals 1

    .line 10
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/survey/g/b;->a(J)V

    return-void
.end method

.method public static a(Lcom/instabug/survey/OnDismissCallback;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->a(Lcom/instabug/survey/OnDismissCallback;)V

    return-void
.end method

.method public static a(Lcom/instabug/survey/OnShowCallback;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->a(Lcom/instabug/survey/OnShowCallback;)V

    return-void
.end method

.method public static a(Lcom/instabug/survey/a;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->a(Lcom/instabug/survey/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->a(Z)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/survey/g/b;->b(J)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Z)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->b(Z)V

    return-void
.end method

.method public static c()J
    .locals 2

    .line 5
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/survey/g/b;->c(J)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->c(Z)V

    return-void
.end method

.method public static d()J
    .locals 2

    .line 2
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/g/a;->d(Z)V

    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Lcom/instabug/survey/OnDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->c()Lcom/instabug/survey/OnDismissCallback;

    move-result-object v0

    return-object v0
.end method

.method public static i()Lcom/instabug/survey/OnShowCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->d()Lcom/instabug/survey/OnShowCallback;

    move-result-object v0

    return-object v0
.end method

.method public static j()Lcom/instabug/survey/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->e()Lcom/instabug/survey/a;

    move-result-object v0

    return-object v0
.end method

.method public static k()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/instabug/survey/g/b;->j()Lcom/instabug/survey/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/b;->h()I

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->f()Z

    move-result v0

    return v0
.end method

.method public static m()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->g()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/instabug/library/Feature;->VZ_MESSAGES_CUSTOM_APPRATING_UI:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->i()Z

    move-result v0

    return v0
.end method

.method public static p()Ljava/lang/Boolean;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/survey/g/a;->k()Lcom/instabug/survey/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/g/a;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
