.class public Lcom/instabug/library/core/eventbus/a;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "CurrentActivityConfigurationChange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Lcom/instabug/library/core/eventbus/a;",
        ">;"
    }
.end annotation


# static fields
.field private static b:Lcom/instabug/library/core/eventbus/a;


# instance fields
.field private a:Landroid/content/res/Configuration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/instabug/library/core/eventbus/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/core/eventbus/a;->b:Lcom/instabug/library/core/eventbus/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/core/eventbus/a;

    invoke-direct {v0}, Lcom/instabug/library/core/eventbus/a;-><init>()V

    sput-object v0, Lcom/instabug/library/core/eventbus/a;->b:Lcom/instabug/library/core/eventbus/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/instabug/library/core/eventbus/a;->b:Lcom/instabug/library/core/eventbus/a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/res/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/eventbus/a;->a:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/instabug/library/core/eventbus/a;->a:Landroid/content/res/Configuration;

    return-void
.end method
