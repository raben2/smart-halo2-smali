.class Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;
.super Ljava/lang/Object;
.source "NotificationsHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/services/NotificationsHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemNotification"
.end annotation


# instance fields
.field notificationType:Lbike/smarthalo/app/models/AssistantNotificationType;

.field final synthetic this$0:Lbike/smarthalo/app/services/NotificationsHandlerService;

.field timestamp:J


# direct methods
.method constructor <init>(Lbike/smarthalo/app/services/NotificationsHandlerService;Lbike/smarthalo/app/models/AssistantNotificationType;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->this$0:Lbike/smarthalo/app/services/NotificationsHandlerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->notificationType:Lbike/smarthalo/app/models/AssistantNotificationType;

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->timestamp:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 123
    check-cast p1, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 132
    iget-object v1, p1, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->notificationType:Lbike/smarthalo/app/models/AssistantNotificationType;

    iget-object v2, p0, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->notificationType:Lbike/smarthalo/app/models/AssistantNotificationType;

    if-ne v1, v2, :cond_0

    iget-wide v1, p1, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->timestamp:J

    iget-wide v3, p0, Lbike/smarthalo/app/services/NotificationsHandlerService$SystemNotification;->timestamp:J

    sub-long/2addr v1, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method
