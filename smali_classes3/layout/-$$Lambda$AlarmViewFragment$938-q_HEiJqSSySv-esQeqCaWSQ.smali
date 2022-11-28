.class public final synthetic Llayout/-$$Lambda$AlarmViewFragment$938-q_HEiJqSSySv-esQeqCaWSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Llayout/AlarmViewFragment;


# direct methods
.method public synthetic constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$AlarmViewFragment$938-q_HEiJqSSySv-esQeqCaWSQ;->f$0:Llayout/AlarmViewFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Llayout/-$$Lambda$AlarmViewFragment$938-q_HEiJqSSySv-esQeqCaWSQ;->f$0:Llayout/AlarmViewFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Llayout/AlarmViewFragment;->lambda$subscribeToIsDeviceConnected$0(Llayout/AlarmViewFragment;Ljava/lang/Boolean;)V

    return-void
.end method
