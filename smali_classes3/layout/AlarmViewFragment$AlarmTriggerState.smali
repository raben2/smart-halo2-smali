.class Llayout/AlarmViewFragment$AlarmTriggerState;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/AlarmViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmTriggerState"
.end annotation


# instance fields
.field isConnected:Z

.field final synthetic this$0:Llayout/AlarmViewFragment;

.field triggersCount:I


# direct methods
.method public constructor <init>(Llayout/AlarmViewFragment;IZ)V
    .locals 0

    .line 409
    iput-object p1, p0, Llayout/AlarmViewFragment$AlarmTriggerState;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput p2, p0, Llayout/AlarmViewFragment$AlarmTriggerState;->triggersCount:I

    .line 411
    iput-boolean p3, p0, Llayout/AlarmViewFragment$AlarmTriggerState;->isConnected:Z

    return-void
.end method
