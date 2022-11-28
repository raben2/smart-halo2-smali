.class public Lcom/instabug/chat/e/b$c;
.super Ljava/lang/Object;
.source "Chat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/instabug/chat/e/b;
    .locals 4

    .line 1
    new-instance v0, Lcom/instabug/chat/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/chat/e/b$a;->READY_TO_BE_SENT:Lcom/instabug/chat/e/b$a;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/instabug/chat/e/b;-><init>(Ljava/lang/String;Lcom/instabug/library/model/State;Lcom/instabug/chat/e/b$a;)V

    .line 3
    new-instance v1, Lcom/instabug/chat/e/b$c$a;

    invoke-direct {v1, p0, v0, p1}, Lcom/instabug/chat/e/b$c$a;-><init>(Lcom/instabug/chat/e/b$c;Lcom/instabug/chat/e/b;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-object v0
.end method
