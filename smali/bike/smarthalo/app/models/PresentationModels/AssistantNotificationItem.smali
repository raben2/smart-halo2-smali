.class public Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;
.super Ljava/lang/Object;
.source "AssistantNotificationItem.java"


# instance fields
.field public isFeatureAvailable:Z

.field public isSwitchEnabled:Z

.field public type:Lbike/smarthalo/app/models/AssistantNotificationType;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/models/AssistantNotificationType;ZZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->type:Lbike/smarthalo/app/models/AssistantNotificationType;

    .line 16
    iput-boolean p2, p0, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->isSwitchEnabled:Z

    .line 17
    iput-boolean p3, p0, Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;->isFeatureAvailable:Z

    return-void
.end method
