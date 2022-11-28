.class public interface abstract Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;
.super Ljava/lang/Object;
.source "PluginPromptOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/plugin/PluginPromptOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInvocationListener"
.end annotation


# virtual methods
.method public varargs abstract onInvoke(Landroid/net/Uri;[Ljava/lang/String;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
