.class public Lbike/smarthalo/app/models/PresentationModels/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;
    }
.end annotation


# instance fields
.field private additionalText:Ljava/lang/String;

.field private imageId:I

.field private notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

.field private textId:I


# direct methods
.method public constructor <init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->textId:I

    .line 42
    iput p2, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->imageId:I

    .line 43
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    return-void
.end method

.method public constructor <init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->textId:I

    .line 48
    iput p2, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->imageId:I

    .line 49
    iput-object p3, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    .line 50
    iput-object p4, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->additionalText:Ljava/lang/String;

    return-void
.end method

.method public static buildDebugMenuNotification()Lbike/smarthalo/app/models/PresentationModels/Notification;
    .locals 4

    .line 64
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const v2, 0x7f1100a1

    const v3, 0x7f0800a1

    invoke-direct {v0, v2, v3, v1}, Lbike/smarthalo/app/models/PresentationModels/Notification;-><init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 55
    move-object v0, p1

    check-cast v0, Lbike/smarthalo/app/models/PresentationModels/Notification;

    if-eqz p1, :cond_0

    .line 57
    iget p1, v0, Lbike/smarthalo/app/models/PresentationModels/Notification;->textId:I

    iget v1, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->textId:I

    if-ne p1, v1, :cond_0

    iget p1, v0, Lbike/smarthalo/app/models/PresentationModels/Notification;->imageId:I

    iget v1, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->imageId:I

    if-ne p1, v1, :cond_0

    iget-object p1, v0, Lbike/smarthalo/app/models/PresentationModels/Notification;->notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAdditionalText()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->additionalText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()I
    .locals 1

    .line 19
    iget v0, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->imageId:I

    return v0
.end method

.method public getNotificationType()Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;
    .locals 1

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->notificationType:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    return-object v0
.end method

.method public getText()I
    .locals 1

    .line 15
    iget v0, p0, Lbike/smarthalo/app/models/PresentationModels/Notification;->textId:I

    return v0
.end method
