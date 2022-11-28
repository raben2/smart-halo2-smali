.class public Lcom/instabug/survey/g/b;
.super Ljava/lang/Object;
.source "PersistableSettings.java"


# static fields
.field private static c:Lcom/instabug/survey/g/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Landroid/content/SharedPreferences$Editor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "instabug_survey"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Lcom/instabug/survey/g/b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/g/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/survey/g/b;->c:Lcom/instabug/survey/g/b;

    return-void
.end method

.method public static j()Lcom/instabug/survey/g/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/survey/g/b;->c:Lcom/instabug/survey/g/b;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/g/b;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/survey/g/b;->c:Lcom/instabug/survey/g/b;

    return-object v0
.end method

.method public static k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/survey/g/b;->c:Lcom/instabug/survey/g/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_resolve_country_code"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "survey_reshow_after_session_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "survey_reshow_after_days_count"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string p2, "survey_reshow_set_by_local_api"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "survey_resolve_country_code_last_fetch"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "survey_resolve_country_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_resolve_country_code_last_fetch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "instabug_app_version_first_seen"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "instabug_last_app_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "instabug_app_version_first_seen"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "survey_last_fetch_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "instabug_last_app_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_survey_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/g/b;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public e()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_last_fetch_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_survey_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_reshow_after_days_count"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_reshow_after_session_count"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/g/b;->a:Landroid/content/SharedPreferences;

    const-string v1, "survey_reshow_set_by_local_api"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
