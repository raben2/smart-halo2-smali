.class public interface abstract Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract$View;
.super Ljava/lang/Object;
.source "AssistantNotificationsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/presenters/presenterContracts/AssistantNotificationsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation


# virtual methods
.method public abstract onItemsReady(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract togglePermissionsMessage(Z)V
.end method
