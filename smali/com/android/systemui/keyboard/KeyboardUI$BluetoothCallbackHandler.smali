.class final Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;
.super Ljava/lang/Object;
.source "KeyboardUI.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/keyboard/KeyboardUI;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChanged(I)V
    .registers 5
    .param p1, "bluetoothState"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    const/4 v1, 0x4

    .line 594
    const/4 v2, 0x0

    .line 593
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 592
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 3
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "state"    # I

    .prologue
    .line 610
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 604
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 6
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    const/4 v1, 0x5

    .line 600
    const/4 v2, 0x0

    .line 599
    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 598
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 606
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 2
    .param p1, "started"    # Z

    .prologue
    .line 608
    return-void
.end method
