.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent$Invocation;
.super Ljava/lang/Object;
.source "SDKCoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Invocation"
.end annotation


# static fields
.field public static final TYPE_INVOCATION:Ljava/lang/String; = "invocation"

.field public static final VALUE_INVOKED:Ljava/lang/String; = "invoked"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
