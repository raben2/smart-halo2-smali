.class final Lcom/google/common/primitives/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final GWT_RPC_PROPERTY_NAME:Ljava/lang/String; = "guava.gwt.emergency_reenable_rpc"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGwtRpcEnabled()V
    .locals 4

    const-string v0, "guava.gwt.emergency_reenable_rpc"

    const-string v1, "true"

    .line 28
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "guava.gwt.emergency_reenable_rpc"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "https://stackoverflow.com/q/5189914/28465"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"

    aput-object v3, v1, v2

    const-string v2, "We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava\'s GWT-RPC support, see %s."

    .line 30
    invoke-static {v2, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
