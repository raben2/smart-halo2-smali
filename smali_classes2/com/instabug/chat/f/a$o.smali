.class public abstract Lcom/instabug/chat/f/a$o;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/chat/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "o"
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/chat/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b()V
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/chat/f/a$o;->b()V

    return-void
.end method
