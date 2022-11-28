.class public Lcom/instabug/crash/e/c;
.super Ljava/lang/Object;
.source "PersistableSettings.java"


# static fields
.field private static b:Lcom/instabug/crash/e/c;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "instabug_crash"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/crash/e/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/crash/e/c;

    invoke-direct {v0, p0}, Lcom/instabug/crash/e/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/crash/e/c;->b:Lcom/instabug/crash/e/c;

    return-void
.end method

.method public static c()Lcom/instabug/crash/e/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/crash/e/c;->b:Lcom/instabug/crash/e/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/crash/e/c;->a(Landroid/content/Context;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/crash/e/c;->b:Lcom/instabug/crash/e/c;

    return-object v0
.end method

.method public static d()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/crash/e/c;->b:Lcom/instabug/crash/e/c;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/instabug/crash/e/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "last_crash_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/crash/e/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_crash_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/crash/e/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ib_first_run_after_updating_encryptor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/crash/e/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ib_first_run_after_updating_encryptor"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
