.class Lbike/smarthalo/app/controllers/AlarmController$1;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "AlarmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/AlarmController;->updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/AlarmController;

.field final synthetic val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

.field final synthetic val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

.field final synthetic val$finalIsAggressive:Z

.field final synthetic val$finalIsArmed:Z

.field final synthetic val$finalTapcode:Ljava/lang/String;

.field final synthetic val$isAggressive:Ljava/lang/Boolean;

.field final synthetic val$isArmed:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/AlarmController;Lbike/smarthalo/app/models/AlarmUpdateCallback;Ljava/lang/String;Ljava/lang/Boolean;Lbike/smarthalo/sdk/SHDeviceServiceBinder;ZZLjava/lang/Boolean;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->this$0:Lbike/smarthalo/app/controllers/AlarmController;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalTapcode:Ljava/lang/String;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$isAggressive:Ljava/lang/Boolean;

    iput-object p5, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    iput-boolean p6, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalIsArmed:Z

    iput-boolean p7, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalIsAggressive:Z

    iput-object p8, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$isArmed:Ljava/lang/Boolean;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone([B)V
    .locals 8

    if-eqz p1, :cond_4

    .line 120
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 128
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalTapcode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 129
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalTapcode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aget-char v1, v1, v0

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    add-int/2addr v3, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$isAggressive:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 135
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalTapcode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v5, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalIsArmed:Z

    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$isAggressive:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    new-instance v7, Lbike/smarthalo/app/controllers/AlarmController$1$1;

    invoke-direct {v7, p0}, Lbike/smarthalo/app/controllers/AlarmController$1$1;-><init>(Lbike/smarthalo/app/controllers/AlarmController$1;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->configureAlarmSeverity([BIIZZLbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalTapcode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-boolean v5, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalIsArmed:Z

    iget-boolean v6, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$finalIsAggressive:Z

    new-instance v7, Lbike/smarthalo/app/controllers/AlarmController$1$2;

    invoke-direct {v7, p0}, Lbike/smarthalo/app/controllers/AlarmController$1$2;-><init>(Lbike/smarthalo/app/controllers/AlarmController$1;)V

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->configureAlarm([BIIZZLbike/smarthalo/sdk/CmdCallback;)V

    :goto_1
    return-void

    .line 121
    :cond_4
    :goto_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController$1;->val$cb:Lbike/smarthalo/app/models/AlarmUpdateCallback;

    if-eqz p1, :cond_5

    .line 122
    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Failure:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/models/AlarmUpdateCallback;->onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V

    :cond_5
    return-void
.end method
