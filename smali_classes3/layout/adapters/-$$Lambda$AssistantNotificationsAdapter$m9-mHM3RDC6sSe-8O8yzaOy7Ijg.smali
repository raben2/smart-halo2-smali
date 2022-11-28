.class public final synthetic Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic f$0:Llayout/adapters/AssistantNotificationsAdapter;

.field private final synthetic f$1:Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;


# direct methods
.method public synthetic constructor <init>(Llayout/adapters/AssistantNotificationsAdapter;Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;->f$0:Llayout/adapters/AssistantNotificationsAdapter;

    iput-object p2, p0, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;->f$1:Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;->f$0:Llayout/adapters/AssistantNotificationsAdapter;

    iget-object v1, p0, Llayout/adapters/-$$Lambda$AssistantNotificationsAdapter$m9-mHM3RDC6sSe-8O8yzaOy7Ijg;->f$1:Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;

    invoke-static {v0, v1, p1, p2}, Llayout/adapters/AssistantNotificationsAdapter;->lambda$getView$0(Llayout/adapters/AssistantNotificationsAdapter;Lbike/smarthalo/app/models/PresentationModels/AssistantNotificationItem;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
