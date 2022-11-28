.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IxVgD6vBOusb3R8-0p-eWZ404VU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/AlarmController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/AlarmController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IxVgD6vBOusb3R8-0p-eWZ404VU;->f$0:Lbike/smarthalo/app/controllers/AlarmController;

    return-void
.end method


# virtual methods
.method public final onAlarmReportReady(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IxVgD6vBOusb3R8-0p-eWZ404VU;->f$0:Lbike/smarthalo/app/controllers/AlarmController;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/AlarmController;->lambda$fetchAlarmReport$1(Lbike/smarthalo/app/controllers/AlarmController;Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;)V

    return-void
.end method
