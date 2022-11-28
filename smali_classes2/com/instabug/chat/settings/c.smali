.class public Lcom/instabug/chat/settings/c;
.super Ljava/lang/Object;
.source "PersistableSettings.java"


# static fields
.field private static b:Lcom/instabug/chat/settings/c;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/instabug/chat/settings/c;

    invoke-direct {v0, p0}, Lcom/instabug/chat/settings/c;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/instabug/chat/settings/c;->b:Lcom/instabug/chat/settings/c;

    return-void
.end method

.method static g()Lcom/instabug/chat/settings/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/chat/settings/c;->b:Lcom/instabug/chat/settings/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/chat/settings/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/chat/settings/c;->a(Landroid/content/SharedPreferences;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/chat/settings/c;->b:Lcom/instabug/chat/settings/c;

    return-object v0
.end method

.method public static h()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_FIELD_NOT_NULLABLE"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/instabug/chat/settings/c;->b:Lcom/instabug/chat/settings/c;

    return-void
.end method


# virtual methods
.method a()J
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "ibc_last_chat_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method a(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_push_notification_icon"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method a(J)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_last_chat_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method a(Z)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_conversation_sounds"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method b()I
    .locals 3
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ibc_push_notification_icon"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method b(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_ttl"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method b(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_in_app_notification_sound"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ibc_ttl"

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method c(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc__notifications_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ibc_notification_sound"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method d()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ibc_in_app_notification_sound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ibc__notifications_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/settings/c;->a:Landroid/content/SharedPreferences;

    const-string v1, "ibc_notification_sound"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
