.class public Lcom/instabug/featuresrequest/f/c;
.super Ljava/lang/Object;
.source "PersistableSettings.java"


# static fields
.field private static c:Lcom/instabug/featuresrequest/f/c;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "instabug_feature_requests"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/f/c;->a:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/f/c;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/featuresrequest/f/c;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/f/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/featuresrequest/f/c;->c:Lcom/instabug/featuresrequest/f/c;

    return-void
.end method

.method public static c()Lcom/instabug/featuresrequest/f/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/f/c;->c:Lcom/instabug/featuresrequest/f/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/featuresrequest/f/c;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/featuresrequest/f/c;->c:Lcom/instabug/featuresrequest/f/c;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/f/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_activity"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/f/c;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_sort_by_action"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/f/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/f/c;->b:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_activity"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/f/c;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/f/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_sort_by_action"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
