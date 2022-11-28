.class public Lcom/instabug/chat/settings/a;
.super Ljava/lang/Object;
.source "ChatSettings.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.instabug.chat"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/instabug/chat/settings/AttachmentTypesState;
    .locals 1

    .line 3
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/b;->a()Lcom/instabug/chat/settings/AttachmentTypesState;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)V
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/c;->a(I)V

    return-void
.end method

.method public static a(J)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/chat/settings/c;->a(J)V

    return-void
.end method

.method public static a(Lcom/instabug/chat/settings/AttachmentTypesState;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/b;->a(Lcom/instabug/chat/settings/AttachmentTypesState;)Lcom/instabug/chat/settings/b;

    return-void
.end method

.method public static a(Lcom/instabug/library/OnSdkDismissCallback;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/b;->a(Lcom/instabug/library/OnSdkDismissCallback;)V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/c;->a(Z)V

    return-void
.end method

.method public static b()J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/instabug/chat/settings/c;->b(J)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/chat/settings/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/chat/settings/c;->a(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static b(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 4
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/c;->b(Z)V

    return-void
.end method

.method public static c()Ljava/lang/Runnable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/b;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public static c(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/c;->c(Z)V

    return-void
.end method

.method public static d()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->b()I

    move-result v0

    return v0
.end method

.method public static d(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/c;->d(Z)V

    return-void
.end method

.method public static e()Lcom/instabug/library/OnSdkDismissCallback;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/b;->c()Lcom/instabug/library/OnSdkDismissCallback;

    move-result-object v0

    return-object v0
.end method

.method public static e(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/instabug/chat/settings/b;->a(Z)V

    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()J
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/a;->a()Lcom/instabug/chat/settings/AttachmentTypesState;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/instabug/chat/settings/AttachmentTypesState;->isScreenshotEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/instabug/chat/settings/AttachmentTypesState;->isImageFromGalleryEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/instabug/chat/settings/AttachmentTypesState;->isScreenRecordingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static i()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->d()Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->e()Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/c;->g()Lcom/instabug/chat/settings/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/c;->f()Z

    move-result v0

    return v0
.end method

.method public static l()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/b;->h()V

    .line 2
    invoke-static {}, Lcom/instabug/chat/settings/c;->h()V

    return-void
.end method

.method public static m()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/chat/settings/b;->f()Lcom/instabug/chat/settings/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/chat/settings/b;->e()Z

    move-result v0

    return v0
.end method
