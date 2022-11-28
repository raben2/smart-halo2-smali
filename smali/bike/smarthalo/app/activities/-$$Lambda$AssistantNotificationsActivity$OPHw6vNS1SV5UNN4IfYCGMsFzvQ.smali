.class public final synthetic Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$OPHw6vNS1SV5UNN4IfYCGMsFzvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llayout/adapters/AssistantNotificationsAdapter$NotificationSwitchListener;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/activities/AssistantNotificationsActivity;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$OPHw6vNS1SV5UNN4IfYCGMsFzvQ;->f$0:Lbike/smarthalo/app/activities/AssistantNotificationsActivity;

    return-void
.end method


# virtual methods
.method public final onSwitchToggled(Lbike/smarthalo/app/models/AssistantNotificationType;Z)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/activities/-$$Lambda$AssistantNotificationsActivity$OPHw6vNS1SV5UNN4IfYCGMsFzvQ;->f$0:Lbike/smarthalo/app/activities/AssistantNotificationsActivity;

    invoke-static {v0, p1, p2}, Lbike/smarthalo/app/activities/AssistantNotificationsActivity;->lambda$onItemsReady$1(Lbike/smarthalo/app/activities/AssistantNotificationsActivity;Lbike/smarthalo/app/models/AssistantNotificationType;Z)V

    return-void
.end method
