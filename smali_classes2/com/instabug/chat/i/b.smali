.class public final Lcom/instabug/chat/i/b;
.super Ljava/lang/Object;
.source "PlaceHolderResolver.java"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_RETURN_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    sget v1, Lcom/instabug/library/R$string;->instabug_str_notification_title:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/instabug/library/util/InstabugAppData;

    invoke-direct {v3, v0}, Lcom/instabug/library/util/InstabugAppData;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v3}, Lcom/instabug/library/util/InstabugAppData;->getAppName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 5
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8
    :goto_0
    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->CHATS_TEAM_STRING_NAME:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v1, v0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
