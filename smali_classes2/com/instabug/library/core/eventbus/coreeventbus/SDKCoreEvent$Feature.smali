.class public Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent$Feature;
.super Ljava/lang/Object;
.source "SDKCoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/core/eventbus/coreeventbus/SDKCoreEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static final TYPE_FEATURES:Ljava/lang/String; = "features"

.field public static final TYPE_FEATURES_FETCHED:Ljava/lang/String; = "featuresFetched"

.field public static final VALUE_FETCHED:Ljava/lang/String; = "fetched"

.field public static final VALUE_UPDATED:Ljava/lang/String; = "updated"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
