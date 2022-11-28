.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent$Session;
.super Ljava/lang/Object;
.source "SDKCoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# static fields
.field public static final TYPE_SESSION:Ljava/lang/String; = "session"

.field public static final VALUE_FINISHED:Ljava/lang/String; = "finished"

.field public static final VALUE_STARTED:Ljava/lang/String; = "started"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
