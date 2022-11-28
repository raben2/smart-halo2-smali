.class Llayout/AlarmViewFragment$1;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 109
    iput-object p1, p0, Llayout/AlarmViewFragment$1;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p1, p0, Llayout/AlarmViewFragment$1;->this$0:Llayout/AlarmViewFragment;

    invoke-virtual {p1}, Llayout/AlarmViewFragment;->prepareSetAlarm()V

    return-void
.end method
