.class public Lcom/instabug/library/core/plugin/b;
.super Ljava/lang/Object;
.source "PromptOptionManager.java"


# direct methods
.method public static a(IZ)Lcom/instabug/library/core/plugin/PluginPromptOption;
    .locals 2
    .param p0    # I
        .annotation build Lcom/instabug/library/core/plugin/PluginPromptOption$PromptOptionIdentifier;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/instabug/library/core/plugin/a;->a(Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/library/core/plugin/PluginPromptOption;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/library/core/plugin/PluginPromptOption;->getPromptOptionIdentifier()I

    move-result v1

    if-ne v1, p0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
