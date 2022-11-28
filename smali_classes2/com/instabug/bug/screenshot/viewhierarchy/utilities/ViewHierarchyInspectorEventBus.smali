.class public Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "ViewHierarchyInspectorEventBus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/bug/k/b/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->instance:Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    invoke-direct {v0}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;-><init>()V

    sput-object v0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->instance:Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->instance:Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    return-object v0
.end method
