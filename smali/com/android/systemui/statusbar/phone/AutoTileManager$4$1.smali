.class Lcom/android/systemui/statusbar/phone/AutoTileManager$4$1;
.super Ljava/lang/Object;
.source "AutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->handleValueChanged(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4$1;->this$1:Lcom/android/systemui/statusbar/phone/AutoTileManager$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$4;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->-get0(Lcom/android/systemui/statusbar/phone/AutoTileManager;)Lcom/android/systemui/qs/SecureSetting;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 57
    return-void
.end method