.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent$User;
.super Ljava/lang/Object;
.source "SDKCoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# static fields
.field public static final TYPE_USER:Ljava/lang/String; = "user"

.field public static final VALUE_LOGGED_IN:Ljava/lang/String; = "logged_in"

.field public static final VALUE_LOGGED_OUT:Ljava/lang/String; = "logged_out"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
