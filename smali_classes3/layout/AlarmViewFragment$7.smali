.class Llayout/AlarmViewFragment$7;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->onAlarmTurnedOn()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AlarmViewFragment;


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    .line 301
    iput-object p1, p0, Llayout/AlarmViewFragment$7;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 304
    iget-object v0, p0, Llayout/AlarmViewFragment$7;->this$0:Llayout/AlarmViewFragment;

    invoke-virtual {v0}, Llayout/AlarmViewFragment;->prepareSetAlarm()V

    return-void
.end method
