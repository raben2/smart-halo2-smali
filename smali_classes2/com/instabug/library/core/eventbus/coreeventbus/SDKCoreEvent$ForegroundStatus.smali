.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent$ForegroundStatus;
.super Ljava/lang/Object;
.source "SDKCoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundStatus"
.end annotation


# static fields
.field public static final TYPE_FOREGROUNDS_STATUS:Ljava/lang/String; = "foreground_status"

.field public static final VALUE_AVAILABLE:Ljava/lang/String; = "available"

.field public static final VALUE_BUSY:Ljava/lang/String; = "busy"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
